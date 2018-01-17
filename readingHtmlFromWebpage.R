##Create Connection with webpage.
conn <- url('http://biostat.jhsph.edu/~jleek/contact.html')
##Read HTML lines
code <- readLines(conn)
##Close connection
close(conn)
##Find number of charaters on 10th, 20th, 30th and 100th line of html.
nchar(code[10])
nchar(code[20])
nchar(code[30])
nchar(code[100])
