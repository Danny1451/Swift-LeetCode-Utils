//: Playground - noun: a place where people can play

import UIKit

// ListNode Utils
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


func createListNode(_ list:[Int]) -> ListNode?{
    
    if list.count == 0 {
        return nil;
    }
    
    let head = ListNode(list.first!)
    
    var node = head;
    for i in 1..<list.count {
        
        node.next = ListNode(list[i])
        
        node = node.next!
    }
    
    return head;
}

func printListNode(_ listHead:ListNode?) -> String{
    var head = listHead!
    var resStr = ""
    while head.next != nil {
        
        resStr = resStr.appending(" " + String(head.val))
        head = head.next!
        
    }
    //apend last one
    resStr = resStr.appending(" " + String(head.val))
    
    return resStr;
}



public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

//create Tree
func createTreeNode(_ tree:[Int?]) -> TreeNode?{
    if tree.count == 0 {
        return nil
    }
    
    var newTree = tree
    //add first
    var que:[TreeNode?] = [TreeNode]()
    let head = TreeNode(newTree.removeFirst()!)
    que.append(head);
    while newTree.count > 0 {
        
        let temp = newTree.first!
        
        let headNode = que.first!

        var newNode:TreeNode
        if temp != nil {
             newNode = TreeNode(temp!)
        }else{
            newNode = TreeNode(Int.max)
            
        }
        
        //sth wrong
        assert(headNode != nil, "sth wrong with your array")
       
        
        if headNode?.left == nil{
            headNode?.left = newNode
        }else if headNode?.right == nil{
            headNode?.right = newNode
        }else{
            //cannot add
            que.removeFirst()
            continue
        }
        //add que
        que.append(newNode)
        //remove first
        newTree.removeFirst()
      
    }
    
    print(head)
    return head;
}

//print 🌲
func printTree(_ treeNode:TreeNode) -> String {
    var resStr = ""
    
    var queue:[TreeNode?] = [TreeNode]()
    
    queue.append(treeNode)
    var res:[String] = [String]()
    while !queue.isEmpty {
        //remove first leaf
        let leaf = queue.removeFirst();
        
        //print leaf
        if leaf == nil || leaf?.val == Int.max{
            res.append("null")
        }else{
            res.append(String(leaf!.val))
             //leaf in the queue
            queue.append(leaf?.left)
            queue.append(leaf?.right)
        }
      
    }
    
    //remove last null
    while res.last == "null" {
        res.removeLast()
    }
    
    //print
    while !res.isEmpty {
        resStr += " " + res.removeFirst()
    }
    
    return resStr;
}
var test = createTreeNode([3,1,nil,1,nil,3,nil,4])


printTree(test!)

