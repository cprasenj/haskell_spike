module Tree where

data QuestionAnswear = QuestionAnswear {question::[Char], answear::[Char]}
                      | Nothing
  deriving (Show, Eq)

data QuestionAnswearTree = Leaf | Node QuestionAnswearTree QuestionAnswear
  deriving (Show, Eq)


createTree :: QuestionAnswear -> QuestionAnswearTree
createTree questionAnswearSet = Node Leaf questionAnswearSet

insert :: QuestionAnswearTree -> QuestionAnswear -> QuestionAnswearTree
insert questionAnswearTree questionAnswear = Node questionAnswearTree questionAnswear

traversal :: Int -> QuestionAnswearTree -> QuestionAnswear
traversal index (Node innerTree questionAnswear)
    | index == 0 = questionAnswear
    | otherwise = traversal index innerTree
