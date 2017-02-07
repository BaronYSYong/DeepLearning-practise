import glob
import random
import shutil

train_path = 'data/dogsvscats-redux/train/dogs/*jpg'
valid_path = 'data/dogsvscats-redux/valid/dogs'
#train_path = 'data/dogsvscats-redux/train/cats/*jpg'
#valid_path = 'data/dogsvscats-redux/valid/cats'
valid_size = 1000

train_list = glob.glob(train_path)
random.shuffle(train_list)
train_list = train_list[:valid_size]

for filepath in train_list:
    shutil.move(filepath, valid_path)
