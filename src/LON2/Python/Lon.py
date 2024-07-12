#Lon:top#
#Lon:import#

# <lon> ::= LPAREN <nums> RPAREN
class Lon(_Start): #Lon:class#

    className = "Lon"
    ruleString = "<lon> ::= LPAREN <nums> RPAREN"
    nums = None

    def __init__(nums):
        #Lon:init#
        self.nums = nums

#Lon#
