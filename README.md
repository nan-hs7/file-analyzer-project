Name: Nandita Nair
Reg No: 24MEI10072
Chosen software: Python

**Description**

**Script 1: System Identity Report**
We are naming the file script1.sh for convenience. 
The script is used for displaying Linus system information using bash scripting concepts such as variables, echo and command substitution to execute command and display output.
1. Command Substitution $( ): Used for running command and save output into a variable e.g., KERNEL=$(uname -r).
2. Variables: Used to store data like  name or system paths for easy use in echo statements.
3. Environment Variables: $HOME is a built-in variable that automatically points to the current user's home directory.
4. grep and cut: Used to cleanly extract the "Pretty Name" of the Linux distribution from the system files.

**Script 2: FOSS package inspector**
file is named script2.sh for convenience. it checks if a specified package is installed on Linuz system, displays its version and summary. It proovides a small description of its purpose.

1. if-then-else: Used to verify if the package exists on the system.
2. >/dev/null 2>&1: This silences the output of the check command so the user only sees your custom echo messages.
3. grep -E: Uses extended regular expressions to find multiple fields (Version, License, etc.) at once.
4. case statement: Provides a clean way to map specific package names to their "philosophy" or description.

**Script 4: Disk and permission auditor**
file names as script3.sh for easy access. its a bash script and uses dir array. it is designed to audit system dictionaries. it reports owner, permissions etc.

1. for DIR in "${DIRS[@]}": This is the proper syntax to loop through every item in a Bash array.
2. ls -ld: The -d flag is crucial here; it tells ls to list the directory itself rather than its contents.
3. awk '{print $1, $3, $4}': This extracts specific columns from the ls output:
4. $1: Permissions (e.g., drwxr-xr-x)
5. $3: Owner (e.g., root)
6. $4: Group (e.g., root)
7. du -sh: Calculates the "Disk Usage" in a human-readable format.
8. 2>/dev/null: This hides "Permission Denied" errors that might occur if the script is run by a non-root user on restricted system folders.

**Script 4: Log File analyzer**

LOGFILE=$1: This captures the first word you type after the script name (the file path).
${2:-"error"}: This is a bash parameter expansion. It uses the second argument as the keyword, but if you don't provide one, it defaults to "error".
while IFS= read -r LINE; do ... done < "$LOGFILE":
IFS= prevents leading/trailing whitespace from being trimmed.
-r prevents backslashes from being interpreted as escape characters.
< "$LOGFILE" redirects the file content into the loop.
$((COUNT + 1)): This is the standard way to perform arithmetic in Bash.
grep -iq:
-i: Case-insensitive (matches "Error", "ERROR", or "error").
-q: Quiet mode. It doesn't print the line to the screen; it just tells the if statement whether the word was found or not.

**Script 5: Open source manifesto generator**

read -p: Captures user input and assigns it to variables ($TOOL, $FREEDOM, $BUILD).
$(date ...): Uses the date command to format the current day, month, and year.
Redirectors:
>: Creates (or overwrites) the file with the first line of text.
>>: Appends the subsequent lines to the end of the file so you don't lose the previous content.
$(whoami): Dynamically inserts your system username into the filename.
Aliases Comment: Included at the top to demonstrate the concept as requested by the prompt.
