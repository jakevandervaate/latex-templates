# LaTeX resume template

This is a resume that is easy for people to read and should work for many applicant tracking systems (ATS).

![resume screenshot](resume.png)

## How to use this template

The main document for this resume is `resume.tex`.
Create your resume by filling in the information in the curly braces for each area of the document.

The sections of the document can be rearranged by changing the content in each of the `\section{}` commands.


### Contact information

Begin by editing the text in the `\title{}` `author{}` braces.

The completed author field will look like `\author{Firstname Lastname}`.


Next, fill in the second set of braces for the lines that start with `\necommand`.

The email field will look like `\newcommand{\email}{your.email@email.com}`

The LinkedIn link just needs the slug to your LinkedIn profile.
The slug is the last part of the URL to an individual's LinkedIn profile.
Learn how to change your LinkedIn profile URL at [this link](https://www.linkedin.com/help/linkedin/answer/87/customizing-your-public-profile-url?lang=en).


#### Using a website link instead of LinkedIn link

Open the commands.tex file and find the following lines:

```
\small{\faIcon{linkedin} \href{https://www.linkedin.com/in/\linkedin/}{linkedin.com/in/\linkedin/}}\ \
%\small{\faIcon{globe} \href{https://\website/}{\website}}
```

Comment out the first line by putting a `%` sign in at the beginning of the first line.
Remove the comment at the beginning of the second line by removing the `%` first character.


### Experience information

The information for each type of experience belongs in the curly braces following the `\entry` command.

```
\entry
{Name of Degree}{Start Date -- End Date}
{Name of University}{City,ST}
{\nothing}

\entry
{Name of Degree}{Start Date -- End Date}
{Name of University}{City,ST}
{
\begin{itemize}
\item You can put courses here if you want
\item Another course
\item Use "nothing command (seen above) to leave this field blank
\end{itemize}
}
```

The entry command creates formats the content for most of the resume.
If you want to leave the description area blank, it's important to use the `\nothing` command and not leave the curly braces empty.
Leaving the braces empty will cause an error while compiling the document.

The description area for after the `\entry` command can support bulleted lists and paragraphs.

### Skills

The skills area can use either a table or tabs for alignment.
Some ATS systems don't like tables; if you're worried about an ATS system ignoring the skills table, similar formatting to the skills table in the example can be achieved with the following content:

```
\textbf{Programming Languages}\tab Example, example, example \\
\textbf{Markup Languages}\tab\tab Example, example, example \\
\textbf{Graphic Design}\tab\tab Example, example, example
```

Use the `\tab` command to align the text nicely.


## Compiling the resume

Compile this resume with the following command:

`pdflatex resume.tex`
