
<center><h1>VERSION CONTROL</h1></center>

<center><h4>Based on http://swcarpentry.github.io/git-novice/</h4></center>
---

* The whole idea behind any **version control** system is to **store “safe” copies** of a project 
<br>
<br>
<br>
* You never have to worry about irreparably breaking your code base
</left>

---

* Nothing that is committed to version control is ever lost, unless you work really, really hard at it.
<br>
<br>
<br>
* All old versions of files are saved, it’s always possible to go back in time to see exactly who wrote what on a particular day, or what version of a program was used to generate a particular set of results.
---

![image1](http://www.phdcomics.com/comics/archive/phd101212s.gif)

---

* We’ve all been in this situation before: it **seems ridiculous to have multiple nearly-identical versions** of the same document.

* Some **word processors** let us deal with this a little better, such as Microsoft Word’s **Track** **Changes** or Google Docs’ **version** **history**.

* BUT if you use LibreOffice Writer or Microsoft Word, **what happens if you accept changes made using the Track Changes option? Do you have a history of those changes?**
---

* Version control systems start with a base version of the document 

![image2](http://swcarpentry.github.io/git-novice/fig/play-changes.svg)

* Save just the changes you made at each step of the way

---

* For example, you can make independent sets of changes based on the same document. Or one of your collaborators can do these changes.

![image3](http://swcarpentry.github.io/git-novice/fig/versions.svg)

---

* Then you can decide which changes keep on the same base document

![image4](http://swcarpentry.github.io/git-novice/fig/merge.svg)

---

* A **version control system** is a **tool that keeps track of these changes** and helps us version and merge our files.

* It allows you to decide which changes make up the next version, called a **commit**, and keeps useful **metadata** about them

* The complete **history of commits** for a particular project and their metadata make up a **repository**

* Repositories can be kept in **sync across different computers** facilitating collaboration among different people

+++

<h2>Key Points</h2>

* Version control is like an unlimited ‘undo’.
* Version control also allows many people to work in parallel.
