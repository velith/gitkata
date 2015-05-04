You are working on the master branch (which is named 'kata_on_the_wrong_branch' in this case)
Part of your work is already committed. Then you get notified that published work is broken and an urgent quick fix is requried.

Your current HEAD is not ready for a push, so you backup one commit, and start a new branch named 'quickfix'. Once your done on the fix, you commit the changes to that new branch.

Thats when you realize you created a minor mess with your branches.

1) Get the quick fix pushed to remote

2) Make your master a direct children of the quick fix

Currently your commits look like this

             master_branch          
                   |
                   v
   A <---- B <---- C
   ^ \
   |  \--- D
remote     ^
           |
        quickfix

But you want it to look like this:

         remote
           |
           v
   A <---- D <---- B <---- C
                           ^
                           |
                          HEAD

