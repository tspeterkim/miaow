# Author: Yash Gupta
# This script looks at the log file allowing to categorize the various 
# lint warning.

# https://www.geeksforgeeks.org/how-to-read-from-a-file-in-python/

lint_dict = {}

fd = open("compile.log", "r")

data = fd.read()

fd.close()

# Create a list of warning. Each element is a list of lines for a warning
# lint_warning[x][y] = line y of the xth warning
lint_warnings = []
for message in data.split("\n\n\n"):
    lint_warn = message.split("\n")
    if(len(lint_warn) > 0 and "Lint" in lint_warn[0]):
        lint_warnings.append(lint_warn)

# Create a freqency table of the various warnings
totalTopics = {}
for msg in lint_warnings:
    if(len(msg) > 0 and len(msg[0]) > 0):
        topic = msg[0]
        if(topic in totalTopics):
            totalTopics[topic] += 1
        else:
            totalTopics[topic] = 1
print(totalTopics)

