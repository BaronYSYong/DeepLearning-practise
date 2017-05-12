# Fast AI Tutorial

## Reference
* https://github.com/fastai/courses.git
* http://course.fast.ai/

## Lesson 1: Image Recognition

### Get data
* https://www.kaggle.com/c/dogs-vs-cats/data
* https://www.kaggle.com/c/dogs-vs-cats-redux-kernels-edition/data

#### Kaggle CLI
* Create profile at https://www.kaggle.com/
* On terminal: pip install kaggle-cli
* kg config -g -u [username] -p [password] -c dogs-vs-cats-redux-kernels-edition
* Go to https://www.kaggle.com/c/dogs-vs-cats-redux-kernels-edition and accept competition requirements (by downloading the data)
* On terminal: kg download

### Arrange data
```
$ sh arrange_data.sh
```

### Reference
* BPTT algorithm
    * https://en.wikipedia.org/wiki/Backpropagation_through_time 
* ImageNet
    * http://image-net.org/explore.php

### Memo to train model by using GPU
* modify ~/.theanorc
```
[global]
floatX = float32
device = gpu
optimizer = fast_run

[lib]
cnmem = 0.8

[nvcc]
fastmath = True

[blas]
ldflags = -llapack -lblas
```
* modify ~/.keras/keras.json
```
{
    "image_dim_ordering": "tf", 
    "epsilon": 1e-07, 
    "floatx": "float32", 
    "backend": "tensorflow"
}
```
* change "tf" to "th"
* change "tensorflow" to "theano"
* "tf" = tensorflow
* "th" = theano
```
$ export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-8.0/lib64
$ export CUDA_HOME=/usr/local/cuda-8.0
$ export PATH=$PATH:/usr/local/cuda-8.0/bin
```
