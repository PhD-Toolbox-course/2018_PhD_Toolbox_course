
<center><h2>VERSION CONTROL</h2></center>

<center><h5>Based on: http://swcarpentry.github.io/git-novice/</h5></center>
<center><h5>Based on: https://www.atlassian.com/git/tutorials/</h5></center>
<br>
<br>
<br>
<center>This lesson is a basic introduction to version control with RStudio</center>

---

<img src="http://www.phdcomics.com/comics/archive/phd101212s.gif" width="450">

---

* We’ve all been in this situation before: it **seems ridiculous to have multiple nearly-identical versions** of the same document 

* Some **word processors** let us deal with this a little better, such as Microsoft Word’s **Track** **Changes** or Google Docs’ **version** **history** 

* BUT if you use LibreOffice Writer or Microsoft Word, **what happens if you accept changes made using the Track Changes option? Do you have a history of those changes?**

---

<h2>What is Version Control</h2>

* The whole idea behind any **version control** system is to **store “safe” copies** of a project 

* You never have to worry about irreparably breaking your code base

---

* **Nothing that is committed to version control is ever lost**, unless you work really, really hard at it.

* All old versions of files are saved, it’s always **possible to go back in time** to see exactly who wrote what on a **particular day**, or what **version** of a program was used to generate a particular **set of results**.

---

* Version control systems start with a base version of the document 

![image2](http://swcarpentry.github.io/git-novice/fig/play-changes.svg)

* **Save just the changes you made at each step** of the way

---

* For example, you can make **independent sets of changes** based on the same document. Or one of your collaborators can do those changes.

![image3](http://swcarpentry.github.io/git-novice/fig/versions.svg)

---

* Then you can **decide which changes keep** on the same base document

![image4](http://swcarpentry.github.io/git-novice/fig/merge.svg)

---

* A **version control system** is a **tool that keeps track of these changes** and helps us version and merge our files. 

* It allows you to decide which changes make up the next version, called a **commit**, and keeps useful **metadata** about them 

* The complete **history of commits** for a particular project and their metadata make up a **repository** 

* Repositories can be kept in **sync across different computers** facilitating collaboration among different people

+++

<h3>Key Points</h3>

* Version control is like an **unlimited ‘undo’**
* Version control also **allows many people to work in parallel**

---

<h2>What is Git</h2>

* Git is the **most widely used** modern version control system in the world 

* Git is a mature, actively maintained **open source project** originally developed by Linus Torvalds

* Git **focuses on the file content** itself

* Git repository are **secured** with a cryptographically secure hashing algorithm called SHA1

---

* Git is the most broadly adopted tool of its kind (it is a **de facto standard**)

* One common criticism of Git is that it can be **difficult to learn**

* Learning to use that power can **take some time**, however once it has been learned, that power can be used by the team to increase their development speed

+++

<img src="http://inchoo.net/wp-content/uploads/2011/01/git-transport.png
" width="600">

+++

<img src="http://2.bp.blogspot.com/--Oj7Ocw5ddA/UQavWR8_1oI/AAAAAAAAI-M/g1hbsrRRbJ4/s1600/git-log-default-output.png" width="600">
---

<h2>Using Git from RStudio</h2>

* Since is so **useful keep track of change** during script development, **RStudio has built-in integration with Git**

* RStudio has a **nice interface** for most common operations

* There are some Git features that you still need to **use the command-**line for

+++

<h1>DEMO</h1>
<h4>Create RStudio project with version control</h4>

+++

1. Open RStudio preferences
1. Go to tab Git/SVN
1. Enable version control interface for RStudio projcts
1. Restart RStudio

---

<h2>Setting up a GitHub repository</h2>

* We will start by **creating a personal account** on [GitHub](https://github.com/)

* On GitHub you can create pubblic repositories

* There are other services where you can also create private repo for free: 
  * [BitBucket](https://bitbucket.org/)
  * [GitLab](https://about.gitlab.com/)

+++

<h1>[DEMO](https://help.github.com/articles/create-a-repo/)</h1>
<h3>Create GitHub account</h3>

---

<h2>Save changes<h2>

* We will **create** our first file on GitHub

* We will **commit** it

+++

<h1>[DEMO](https://help.github.com/articles/create-a-repo/)</h1>
<h3>Create first commit</h3>

---

Creating a new project based on a remote Git

If you have an existing remote Git or Subversion repository that you want to use as the basis for an RStudio project you should:

+++

Demo

Execute the New Project command (from the Project menu)
Choose to create a new project from Version Control
Choose Git or Subversion as appropriate
Provide the repository URL (and other appropriate options) and then click Create Project
The remote repository will be cloned into the specified directory and RStudio's version control features will then be available for that directory.

---

How to use Git in RStudio

1. Commit
2. History
3. Differences
4. Go back in time

+++

Commit

+++

History

+++

Differences

+++

Back in time

---

Advance command with shell (if time allowed)

* Create a develop branch
* Merge branches

+++

Create a develop branch

+++

Merge branches

---
How to sent us your final exercise?

+++

Fork a repo
https://help.github.com/articles/fork-a-repo/

+++

Creating a pull request from a fork
https://help.github.com/articles/creating-a-pull-request-from-a-fork/

---

END
