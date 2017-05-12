DIR="./data/dogsvscats-redux"
mkdir -p $DIR
unzip -q test.zip -d $DIR
unzip -q train.zip -d $DIR
mkdir -p $DIR/train/cats
mkdir -p $DIR/train/dogs
mv $DIR/train/cat.*.jpg $DIR/train/cats
mv $DIR/train/dog.*.jpg $DIR/train/dogs

mkdir -p $DIR/valid/dogs
mkdir -p $DIR/valid/cats
mkdir -p $DIR/sample/train/dogs
mkdir -p $DIR/sample/train/cats
mkdir -p $DIR/sample/valid/dogs
mkdir -p $DIR/sample/valid/cats

shuf -n 1000 -e $DIR/train/dogs/* | xargs -i mv {} $DIR/valid/dogs/
shuf -n 1000 -e $DIR/train/cats/* | xargs -i mv {} $DIR/valid/cats/
shuf -n 4 -e $DIR/valid/dogs/* | xargs -i cp {} $DIR/sample/valid/dogs/
shuf -n 4 -e $DIR/valid/cats/* | xargs -i cp {} $DIR/sample/valid/cats/
shuf -n 8 -e $DIR/valid/dogs/* | xargs -i cp {} $DIR/sample/train/dogs/
shuf -n 8 -e $DIR/valid/cats/* | xargs -i cp {} $DIR/sample/train/cats/
