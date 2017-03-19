
<center><h2>VERSION CONTROL</h2></center>

<center><h5>Based on: http://swcarpentry.github.io/git-novice/</h5></center>
<center><h5>Based on: https://www.atlassian.com/git/tutorials/</h5></center>
<br>
<br>
<br>
<center>This lesson is a basic introduction to version control</center>

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

---

<h2>Using Git from RStudio</h2>

* Since is so **useful keep track of change** during script development, **RStudio has built-in integration with Git**

* RStudio has a **nice interface** for most common operations

* There are some Git features that you still need to **use the command-**line for

+++

<h1>DEMO</h1>
<h3>Create RStudio project with version control</h3>

---

1. Open RStudio preferences
1. Go to tab Git/SVN
1. Enable version control interface for RStudio projcts
1. Restart RStudio

---


<h2>Setting up a repository</h2>

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

<h2>Track changes</h2>

* 
