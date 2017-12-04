---
title       : Insert the chapter title here
description : Insert the chapter description here
attachments :
  slides_link : https://s3.amazonaws.com/assets.datacamp.com/course/teach/slides_example.pdf

---
## Onboarding | Tables

```yaml
type: MultipleChoiceExercise
lang: sql
xp: 50
skills: 1
```

If you've used DataCamp to learn [R](https://www.datacamp.com/courses/free-introduction-to-r) or [Python](https://www.datacamp.com/courses/intro-to-python-for-data-science), you'll be familiar with the interface. For SQL, however, there are a few new features you should be aware of.

For this course, you'll be using a database containing information on almost 5000 films. To the right, underneath the editor, you can see the data in this database by clicking through the tabs.

From looking at the tabs, who is the first person listed in the `people` table?

`@pre_exercise_code`
```{python}
# The pre exercise code runs code to initialize the user's workspace.
# You can use it to load packages, initialize datasets and draw a plot in the viewer

connect('postgresql', 'films')
```

`@instructions`
- Kanye West
- Biggie Smalls
- 50 Cent
- Jay Z

`@hint`
Look at the `people` tab under the editor!

`@sct`
```{python}
# SCT written with sqlwhat: https://github.com/datacamp/sqlwhat/wiki
msg_bad = 'Nope, look at the `people` table!'
msg_success = 'Correct!'

Ex().test_mc(3,[msg_bad, msg_bad, msg_success, msg_bad])
```

---
## Onboarding | Errors

```yaml
type: NormalExercise
lang: sql
xp: 100
skills: 1
```

If you submit the code to the right, you'll see that you get two types of errors.

_SQL_ errors are shown below the editor. These are errors returned by the _SQL_ engine. You should see:

```
syntax error at or near "'DataCamp <3 SQL'" LINE 2: 'DataCamp <3 SQL' ^
```
<br>
_DataCamp_ errors are shown in the **Instructions** box. These will let you know in plain English where you went wrong in your code! You should see:

```
You need to add SELECT at the start of line 2!
```

`@instructions`
Submit the code to the right, check out the errors, then fix them!

`@hint`
In the editor, change line 2 to `SELECT 'DataCamp <3 SQL'`.

`@pre_exercise_code`
```{python}
connect('postgresql', 'films')
```

`@sample_code`
```{sql}
-- Try running me!
'DataCamp <3 SQL'
AS result;
```

`@solution`
```{sql}
-- Try running me!
SELECT 'DataCamp <3 SQL'
AS result;
```

`@sct`
```{sql}
Ex().test_student_typed('SELECT|select', msg='You need to add `SELECT` at the start of line 2!')
Ex().test_has_columns()
Ex().test_error()
```