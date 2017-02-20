# Swif-LeetCode-Utils
Provide fast way to create and print for ListNode &amp; TreeNode on the LeetCode. 😊

If you want to test your Algorithms without the LeetCode,try these code. 

# ListNode

```

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

```

Example

```
\\create ,return the head ListNode
var newList = createListNode([1,2,3,4,5,6])

\\print ,return the string
var str = printListNode(newList) \\" 1 2 3 4 5 6"

```

# TreeNode

```
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
```

In LeetCode, null means pass the leaf, in this Utils, i use 'nil' to represent a empty leaf.

Using The same order on the LeetCode.

```
\\create. init with a [Int?] array.
var newTreeNode = createTreeNode([3,1,nil,1,nil,3,nil,4])

\\print 
var treeStr = printTree(newTreeNode!) \\ " 3 1 null 1 null 4"

```

# End

If there is any problems or some better solutaion, pls give me a issue.
