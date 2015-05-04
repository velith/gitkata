Find the commit in history where an error was introduced.


The script get_pi.py calculates pi using the 100 first terms of the Nilakantha series. It should produce 3.141592 but it does not. It produces 3.264592 using the last commit. 

At each commit, the 100 terms are reshuffled. At some point within the 1000 first commits, an error was introduced. The only thing we know is that the first commit worked correctly.

1) Debug history to locate the error

Bonus) Try to fix the error and commit your change

Note that there are 1000 commits, so going thorugh each one is not practical.

