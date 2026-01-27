# **Task 1: Fix the errors**

## Main steps
1. Build the kernel to see the error messages.
2. Fix all errors, and rebuild the kernel.
3. Run the following to test the kernel:
   ```shell
   sys161 kernel p testbin/hog
   ```
4. Type the character `q` to quit the kernel

If the program works, the printout on the console should look like: 

```shell
(base) root@cf76d73265af:~/os161/root# sys161 kernel p testbin/hog
sys161: System/161 release 2.0.8, compiled Aug 14 2022 20:57:14

OS/161 base system version 2.0.3
Copyright (c) 2000, 2001-2005, 2008-2011, 2013, 2014
   President and Fellows of Harvard College.  All rights reserved.

Put-your-group-name-here's system version 0 (ASST3 #12)

356k physical memory available
Device probe...
lamebus0 (system main bus)
emu0 at lamebus0
ltrace0 at lamebus0
ltimer0 at lamebus0
beep0 at ltimer0
rtclock0 at ltimer0
lrandom0 at lamebus0
random0 at lrandom0
lhd0 at lamebus0
lhd1 at lamebus0
lser0 at lamebus0
con0 at lser0

cpu0: MIPS/161 (System/161 2.x) features 0x0
OS/161 kernel: p testbin/hog
Operation took 0.000120120 seconds
OS/161 kernel [? for menu]: q
Shutting down.
The system is halted.
sys161: 82221462 cycles (56825652 run, 25395810 global-idle)
sys161:   cpu0: 3711313 kern, 28420261 user, 0 idle; 7518 ll, 7518/0 sc, 71035 sync
sys161: 769 irqs 36 exns 0r/0w disk 2r/664w console 8r/0w/3m emufs 0r/0w net
sys161: Elapsed real time: 2.433237 seconds (33.791 mhz)
sys161: Elapsed virtual time: 2.305384899 seconds (25 mhz)
```

## Submitting the assignment

- **Test your kernel to make sure it works and read any error messages, if any are printed.** Read the error messages as they usually tell you what the problem is, e.g., undeclared function, syntax error, linking error, unknown library, unknown function.

- **Clean up before committing**: Remove binary files. The script `cleanup_before_committing` does that for you. Just run it from inside the CSE4001 container before any commit is done. This script will run `bmake clean` for the kernel directories and also for the `userland` directories. Run the script as follows:
   ```shell
   ./cleanup_before_committing <assignment_number>
   ```


- **To submit the assignment, you will `git commit` and `git push` the changes** you made to the code so the changes are sent to the assignment repository on `GitHub.com`.

- **Automated testing.** This repository tests the kernel automatically whenever new changes are pushed to the repository. To see the details of the tests, open the GitHub Actions tab and select the workflow of the test. The code passes the tests if a green checkmark (✅) appears besides the label of the latest commit. Failed tests are indicated by a red X (❌). 



## Detailed information on how to use and build OS/161 for CSE4001: 
- https://github.com/eraldoribeiro/UsingCSE4001_OS161
- https://github.com/eribeiroClassroom/notes_github/blob/main/README.md
