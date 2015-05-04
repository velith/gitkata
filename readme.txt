You have done some work, which has resulted in three commits. You thought you were working on a topic branch. Your colleague wants you to check his/hers new changes so you checkout master and do a pull.

That's when you realize that you have been working on master all along and now you also got a merge conflict. You wish to fix your situation by moving your commits to a topic branch and don't deal with a conflict right now. 

The goal is to:

1) Go back to the state before the pull

2) Move (not copy) the commits to a seperate topic branch

Now you tree looks like this:

                    
               kata_forgot_topic_branch
                          |
                          v
  A <---- B <---- C <---- D   <--- Merge conflict
   \                     
    \-------E
            ^
            |
          remote

The result of your fix should look something like this:

kata_forgot_topic_branch   
          |
          v
          A 
           \            
            \---- B <---- C <---- D              
                                  ^
                                  |
                             topic/branch
