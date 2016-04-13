type cannibals     = Int
type missionarys   = Int
type boatPosition  = Int
data river         = R missionarys boatPosition deriving(Show, Eq)

pairs :: [(missionarys, cannibals)]
pairs = [(2,0), (1,0), (1,1), (0,1), (0,2)]

noCome :: cannibals -> missionarys -> Bool
noCome _0  = True
noCome c m = m >= c