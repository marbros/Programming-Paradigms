type cannibals     = Int
type missionarys   = Int
type boatPosition  = Int
data river         = R missionarys boatPosition deriving(Show, Eq)

noCome :: cannibals -> missionarys -> Bool
noCome _0  = True
noCome c m = m >= c