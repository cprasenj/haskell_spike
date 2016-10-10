module Tree where

data Question = Question Char [Char]
data Answear = Answear Char [Char]

data QuestionAnswear = QuestionAnswear(Question, Answear) | Nothing

data QuestionAnswearTree = Leaf | Node QuestionAnswearTree QuestionAnswear

createTree :: QuestionAnswear -> QuestionAnswearTree
createTree questionAnswearSet = Node Leaf questionAnswearSet

insert :: QuestionAnswearTree -> QuestionAnswear -> QuestionAnswearTree
insert questionAnswearTree questionAnswear = Node questionAnswearTree questionAnswear

traversal :: Int -> QuestionAnswearTree -> QuestionAnswear
traversal index (Node innerTree questionAnswear)
    | index == 0 = questionAnswear
    | otherwise = traversal index innerTree
