import os
ccyy = "2019"
directoryListing = os.listdir(ccyy + "//")
# Part A files
partA = open(ccyy + "\\PartA" + ccyy + ".txt", "a")
for filename in directoryListing:
  x = ".PTA." in filename
  if x == True:
	fileToAdd = open(ccyy + "\\" + filename)
	partA.write(fileToAdd.read())
	fileToAdd.close()
partA.close()

# Part B files
partB = open(ccyy + "\\PartB" + ccyy + ".txt", "a")
for filename in directoryListing:
  x = ".PTB." in filename
  if x == True:
	fileToAdd = open(ccyy + "\\" + filename)
	partB.write(fileToAdd.read())
	fileToAdd.close()
partB.close()

# Part D files
partD = open(ccyy + "\\PartD" + ccyy + ".txt", "a")
for filename in directoryListing:
  x = ".PTD." in filename
  if x == True:
	fileToAdd = open(ccyy + "\\" + filename)
	partD.write(fileToAdd.read())
	fileToAdd.close()
partD.close()
