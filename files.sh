# delete all files that not end with '.c'
rm !(*.c) 

# rename all files that end with '.jpg'
rename 's/.jpg/_min.jpg/' *.jpg

# resize all filethat end with '.png' (270 - wodth)
for file in *.png; do convert $file -resize 270 $file; done

# make foto`s background white from transperancy
for file in *.png; do convert -flatten $file $file; done

# convert all png files into jpg
mogrify -format jpg *.png
