You have created one commit of your work and started to modify some tracked files.

Then you merge from another branch, after which you find out that it contained unsatisfactory changes. It was only one commit that you were intereseted in.

Since you want your own branch clean, you would like to go back to the point before the merge. Your main issue is that you have modified and uncommited changes.

1) Rewind to the point before merge without losing your changes.

2) Pick only the commit you are interested in.

This is a view of the tree:

             your_changes
                  |
                  v
  A <---- B <---- C  <--- uncommited work
   \             /            
    \-----D-----E
          ^
          |
    wanted_change

The result should look something like this:

            your_changes
                  |
                  v
  A <---- B <---- D  <--- uncommited work not lost


