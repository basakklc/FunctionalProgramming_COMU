--replicate

func :: Int->Char->String
func 0 ch=[]
func x ch= ch : func (x-1) ch


--GHCİ
--let xs="ccjjjfddl"
--let ch= 3
--map (func ch) xs -->["ccc","ccc","jjj","jjj","jjj","fff","ddd","ddd","lll"]
