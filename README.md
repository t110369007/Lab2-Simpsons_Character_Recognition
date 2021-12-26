# Lab2-Simpsons_Character_Recognition

## 心得分享
1. 一開始還是使用比較熟悉的Google Colab 環境執行專案，但因為dataset 在雲端，執行時，資料傳來傳去很慢，在加上training 時間過長，最後還是選擇放棄。
2. 原本已經建立好Ubuntu 環境，包括 anaconda, cuda, cudnn 等。也可執行。
      但ubuntu 環境自己不夠熟悉，常常遇到系統問題，e.g. Infinite login loop, …導致花費很多時間在維護系統，基於時間考量，最後暫時放棄，希望下一個題目能用	ubuntu 環境來執行。
3. 有試用Transfer learning, e.g. ResNET, VGG 等，但執行時間很長，最後還是用CNN架構，得到一定程度結果，希望下次再試用transfer learning.  





## system requirement
1. Python 3.8
2. Window 10
3. Ananconda
4. Cuda 11.1
5. Cudnn 8.05



## Image classification
ImageView on TensorFlow.org	ImageRun in Google Colab	ImageView source on GitHub	ImageDownload notebook
This tutorial shows how to classify images of flowers. It creates an image classifier using a tf.keras.Sequential model, and loads data using tf.keras.utils.image_dataset_from_directory. You will gain practical experience with the following concepts:

Efficiently loading a dataset off disk.
Identifying overfitting and applying techniques to mitigate it, including data augmentation and dropout.
This tutorial follows a basic machine learning workflow:

Examine and understand data
Build an input pipeline
Build the model
Train the model
Test the model
Improve the model and repeat the process


## Import TensorFlow and other libraries

## Download and explore the dataset

## Load data using a Keras utility

Let's load these images off disk using the helpful tf.keras.utils.image_dataset_from_directory utility. This will take you from a directory of images on disk to a tf.data.Dataset in just a couple lines of code. If you like, you can also write your own data loading code from scratch by visiting the Load and preprocess images tutorial.

## Create a dataset

## Visualize the data
![image](https://user-images.githubusercontent.com/93765298/147376625-33f7f1f0-1efd-4d13-8960-0706aa0702b5.png)

## Create the model
The Sequential model consists of three convolution blocks (tf.keras.layers.Conv2D) with a max pooling layer (tf.keras.layers.MaxPooling2D) in each of them. There's a fully-connected layer (tf.keras.layers.Dense) with 128 units on top of it that is activated by a ReLU activation function ('relu'). This model has not been tuned for high accuracy—the goal of this tutorial is to show a standard approach.




## Configure the dataset for performance¶
Let's make sure to use buffered prefetching so you can yield data from disk without having I/O become blocking. These are two important methods you should use when loading data:

Dataset.cache keeps the images in memory after they're loaded off disk during the first epoch. This will ensure the dataset does not become a bottleneck while training your model. If your dataset is too large to fit into memory, you can also use this method to create a performant on-disk cache.
Dataset.prefetch overlaps data preprocessing and model execution while training.
Interested readers can learn more about both methods, as well as how to cache data to disk in the Prefetching section of the Better performance with the tf.data API guide.


## Standardize the data
The RGB channel values are in the [0, 255] range. This is not ideal for a neural network; in general you should seek to make your input values small.

Here, you will standardize values to be in the [0, 1] range by using tf.keras.layers.Rescaling:

## Compile the model
## Model summary
## Train the model
## Data augmentation
## Dropout
## Visualize training results
## Predict on new data



