After a few commits in the repository, you forgot to add that special something
that you wanted to be the first version of your history. It just seems wierd to put it after your current HEAD.
Let's call it a file, hello.txt, with the content "Hello, world!".

What you would like is to create a new commit with that file and its content,
but also to base all your history on that commit. Being expert at git you know this
can be solved by using some form of plumbing command.

1) Create a new commit with no parent or children (orphan)

2) Base your current branch on top of that commit

A bonus exercise would be to only use plumbing for this.

                                master
                                   |
                                   v
         A <-- B <-- C <-- E < --- D
         ^
         |
  recently created
