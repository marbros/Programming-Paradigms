type cannibals     = Int
type missionarys   = Int
type boatPosition  = Int
data river         = R missionarys boatPosition deriving(Show, Eq)

pairs :: [(missionarys, cannibals)]
pairs = [(2,0), (1,0), (1,1), (0,1), (0,2)]

noCome :: cannibals -> missionarys -> Bool
noCome _0  = True
noCome c m = m >= c

instance Grafo river where

suc(R m c 1) = [R m' c' 0 | (mb, cb) <- pairs
                             let m' = m - mb, m' >= 0,
                             let c' = c - cb, c' >= 0,
                             noCome c' m',
                             noCome (3 - c') (3 - m')]

suc(R m c 0) = [R m' c' 1 | (mb, cb) <- pairs
                             let m' = m + mb, m' <= 3,
                             let c' = c + cb, c' <= 3,
                             noCome c' m',
                             noCome (3 - c') (3 - m')]

river = path(R 3 3 3 1) ( (==) (R 0 0 0)) []
