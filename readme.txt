Find a lost change and get it back again.

Ever been in the situation that after doing a merge or rebase, suddenly a change is gone? As long as the that change has been comitted once, it's always possible to find and retrieve it.

In Git, you have several options available to look at history. Which do you think works for solving this problem?

1) The first goal of this kata is to find your lost change.

2) Second, you want to get the lost change back into the 'master'.

This is how the version tree looks like:

                 Merge
                   |
                   v
 A <-- B <-- C <-- E <-- F
        \         /
         \-------D


