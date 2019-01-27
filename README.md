# coop-asmt1
This is my submission for Co-Op Assignment #1.

It is a simple shell script that parses through every .txt file in a given directory (by default "textfiles") and checks the number of lines the file has.

Depending on the number of lines, the script will rename the .txt file as follows:
  - < 10 lines: add prefix "short_" to current filename \n
  - 10 <= lines <= 20: add prefix "medium_" to current filename
  - \> 20 lines: add prefix "long_" to current filename
  - if the file is empty (0 lines), the file is removed from the directory
 
To properly run the script:
  - open terminal
  - locate and change directory to coop_asmt1 ($ cd coop_asmt1): this contains the shell script (txt_script.sh)
  - run the command: $ ./txt_script.sh
 
Open the "textfiles" folder located in the "coop_asmt1" folder, and the changed files should be present while the empty files removed.
