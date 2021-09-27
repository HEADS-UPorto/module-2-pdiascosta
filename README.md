<!-- README.md is generated from README.Rmd. Please edit that file -->

<img src=".assets/figures/logo.png" align="right" style="float:right;"/>

<!-- start badges -->

<img src="https://github.com/HEADS-UPorto/${{env.REPOSITORY_SLUG}}/workflows/Building%20Binder/badge.svg" alt="Building Binder"/>
<a href="https://mybinder.org/v2/gh/HEADS-UPorto/Rstudio_Env/main?urlpath=git-pull%3Frepo%3Dhttps%253A%252F%252Fgithub.com%252FHEADS-UPorto%252F${{env.REPOSITORY_SLUG}}%26targetPath%3Dheads%26urlpath%3Drstudio%252F%26branch%3Dmaster"><img src="https://mybinder.org/badge_logo.svg" alt="Launch Binder"/></a>

<img src="https://github.com/HEADS-UPorto/${{env.REPOSITORY_SLUG}}/workflows/GitHub%20Classroom%20Workflow/badge.svg?branch=master&event=push" alt="GitHub Classroom Workflow"/>

<!-- end badges -->

Syllabus
--------

In this module you will be introduced to Rstudio and Github. This module
will cover:

-   The basic data types and its usages;
-   How to declare variables;
-   How to inspect variables’ types;
-   How to change and delete variables.

Lessons
-------

### Module 2.1: Basic Data Types

Everything in **R** is an
[Object](https://cran.r-project.org/doc/manuals/r-release/R-lang.html#Objects)

An object can store, besides its intrinsic value, attributes and even
other objects. This also means that data types can be converted into
another type, using the proper tools.

The reason for this is that **R** is designed to store and manipulate
**Data**.

But let’s keep it simple for now. Think of **Data** being stored in
**variables**, and being manipulated by **functions**.

You may remember this words from mathematics, when we have something
like this:

<center>

*f*(*x*) = *x*<sup>2</sup>∴ *f*(3) = 9

</center>

Which means we have a **function** that squares the value of a
**variable**.

#### **Variables in R**

A variable must have an unique name that identifies it so you can use
its value. There is however a set of names that cannot be used, since
these names are internally used by **R** itself. You can find these
names here: [Reserved
words](https://stat.ethz.ch/R-manual/R-devel/library/base/html/Reserved.html)

There are other restrictions about how to chose a variable name:

-   Can have a combination of **letters**, **digits**, single **period**
    and single **underscore**
-   Must start with a **letter** or a **period**
-   If started with a **period**, it cannot be followed by a **digit**

As in math, to assign a value to a variable, we use a proper symbol that
represents this action.

We use `<-` to assign a value to a variable, and this action is named
**declaration** when the variable didn’t exists before.

Some may ask about the `=` sign. This is a long history that can be
discussed later. In short, **only use the equals sign when you are
assigning a value to a function parameter**. Anywhere else, use the `<-`
operator. Try to be used to this “rule-of-thumb”.

Here are some examples of variable definition

``` r
my_number <- 4
my_text <- "some text"

# right to left assignment
a <- 4
# left to right assignment, this is not possible with "=" !!!
a -> b
```

#### **Main Data Types**

The **R language** has **five** main data types:

-   Numeric, is the default computational data type for any decimal
    value, including irrational numbers;
-   Integer, only accepts round numbers;
-   Character, this type represent a string, that may be composed by one
    or more characters;
-   Complex, its a special type that represents complex numbers with the
    **real** and **imaginary** parts;
-   Logical, represents **TRUE** or **FALSE**, and it is not the same as
    **1** or **0** as in some languages.

Below there are examples of each declaration:

``` r
# Numeric
my_first_numeric <- 10
my_second_numeric <- 5.0 # more explicit when using the period

# Integer
my_integer <- 10L # a number followed by 'L' (literal) is an Integer

# Character
my_string <- "the brown fox jumped over the lazy dog"

# Complex
my_complex <- 4.1+1.5i

# Logical
my_logical <- TRUE
```

#### **Inspecting objects**

We can use the `class()` function to inspect what kind of **object** we
have:

``` r
class(my_first_numeric)
## [1] "numeric"
class(my_second_numeric)
## [1] "numeric"
class(my_integer)
## [1] "integer"
class(my_string)
## [1] "character"
class(my_complex)
## [1] "complex"
class(my_logical)
## [1] "logical"
```

And use `typeof()` to inspect what kind of **data** is stored in this
object:

``` r
typeof(my_first_numeric)
## [1] "double"
typeof(my_second_numeric)
## [1] "double"
typeof(my_integer)
## [1] "integer"
typeof(my_string)
## [1] "character"
typeof(my_complex)
## [1] "complex"
typeof(my_logical)
## [1] "logical"
```

------------------------------------------------------------------------

### Module 2.2: **Listing and Deleting Variables**

#### Listing

We can list all variables that we have declared in our workspace with
the function `ls()`. In RStudio you can see them in the Environment tab.

``` r
ls() # returns all the existing variables alphabetically
## [1] "my_complex"        "my_first_numeric"  "my_integer"       
## [4] "my_logical"        "my_second_numeric" "my_string"
```

#### Deleting

Sometimes we need to clean our workspace. We can use the function `rm()`
to remove permanently one or more objects.

``` r
ls() # returns all variables
## [1] "my_complex"        "my_first_numeric"  "my_integer"       
## [4] "my_logical"        "my_second_numeric" "my_string"

rm(my_complex)

ls() # now we see that `my_complex` has been removed
## [1] "my_first_numeric"  "my_integer"        "my_logical"       
## [4] "my_second_numeric" "my_string"
```

Bear in mind that when you want to have a fresh environment, you need to
**Restart R**. You can do this in RStudio using the menu
`Session -> Restart R` or the shortcut `Ctrl+Shift+F10`.

### Module 2.3: Write a simple R code

Your second task is also straightforward:

1.  Create, in the project folder, a new file named “assignment.R” (with
    upper-case .R)
2.  Write a code that prints in the console the same output as presented
    below
3.  Save the file and push it back to the repository for evaluation

Output:

``` r
numeric
double
```

Starting of code:

``` r
# Write your code here
cat(" ")
```
