# CSE4001 - Assignment: OS/161 Code Reading 👋

In this assignment, you will complete two main tasks: 

- **Task 1**:  Fix the errors in the code to ensure it builds without errors. Try to build the kernel to see the errors that need to be fixed. 
- **Task 2**: Answer the code-reading questions listed at the end of this document. Write your answers on this `README.md` file, in the space below each question. 

## 🚨 Do this first!!🚨 Create your own private repository for the assignment
1. Follow these instructions: https://github.com/cse4001/cse4001_course_materials/blob/main/adm/submitting_assignments.md
2. Learn how to clone repositories using the GitHub tool `gh`: https://github.com/eribeiroClassroom/notes_github/blob/main/README.md 


## **Hints for completing the assignment**

- **You must `git clone` the assignment GitHub repository.** Any other option to obtain the kernel files is wrong (e.g., using the download option from GitHub, copying the files from another directory or any other place, forking the repository, invoking the files through an *ouija board*). By *git cloning* the repository, its files  will be under source control and you will be able to edit the source code and `commit/push` any changes into the correct assignment repository on the GitHub server. You should not work on any files from a previous assignment. Every `OS/161` assignment has its own specific source code that is provided with the assignment repository. Clone the assignment repository from inside `/root/workspace/` (which is inside the CSE4001 container), and using the shell (command-line interface).
 
- **Test your kernel to make sure it works and read any error messages, if any are printed.** Read the error messages as they usually tell you what the problem is, e.g., undeclared function, syntax error, linking error, unknown library, unknown function.

- **Automated testing.** This repository tests the kernel automatically whenever new changes are pushed to the repository. To see the details of the tests, open the GitHub Actions tab and select the workflow of the test. The code passes the tests if a green checkmark (✅) appears besides the label of the latest commit. Failed tests are indicated by a red X (❌). 


---

## 🚀 Now, start the actual assignment

### **Clone your private repository for this assignment**

#### Start the CSE4001 container, and clone the assignment repo

 Start the `CSE4001` container: 
  ```bash
  docker start -i cse4001
  ```

  If the container fails to start, make sure the container is running by calling the `docker run` command. For details see notes: https://github.com/eraldoribeiro/UsingCSE4001_OS161/blob/main/RunningOS161_DockerDesktop.md
  
Clone the assignment repository. Do this from inside `/root/workspace/` in the `CSE4001` container. Use `git clone` or `gh repo clone`. 
    
```bash
cd /root/workspace
gh repo clone <assignment_repository_url>
```

#### Build the `OS/161` kernel. 

Start by building the current version of the kernel that was just cloned. Go into the directory of the repository that was cloned for this assignment, and run the script `build_os161` that is provided in the assignment repository. 
    
The `build_os161` script implements the steps to build both the `kernel` and `userland`. If you want to see the building steps, just open the file of the script in a text editor or read the detailed instructions on how to build `OS/161` (https://github.com/eraldoribeiro/UsingCSE4001_OS161/blob/main/README.md). 

```bash
cd <assignment_repository_url>
./build_os161 <assignment_number>
```

The script’s mode is set to executable. If it does not execute, call `bash build_os161 <assignment number>` .  If the build is successful, the script will print the following: 

```bash
Building done.
  
Now, run sys161 kernel from inside ~/os161/root/
```
**⚠️ In the case of this assignment, the build process will fail due to errors.**




### **Task 1: Fix the errors**

- [Description of task 1 (fix errors)](./fix_errors.md)

### **Task 2: Answer the following questions**

- [Description of task 2 (questions to answer)](./questions.md)

**⚠️ The automated test does not check the written answers. It only checks the code building and result of running the test function.**
    







