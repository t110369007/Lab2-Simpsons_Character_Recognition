train.sh

epoch = 100
Best-model-1.h5
validation_split=0.2
batch_size = 32
img_height = 180
img_width = 180


model.add(Conv2D(64,(3,3),padding='same', input_shape=(221, 221, 3), activation='relu'))
model.add(BatchNormalization())
#Conv 2
model.add(Conv2D(64,(3,3),padding='same',activation='relu'))
model.add(BatchNormalization())
model.add(MaxPool2D(pool_size=(2,2)))
model.add(Dropout(0.2))
#Conv 3
model.add(Conv2D(128,(3,3),padding='same',activation='relu'))
model.add(BatchNormalization())
#Conv 4
model.add(Conv2D(128,(3,3),padding='same',activation='relu'))
model.add(BatchNormalization())
model.add(MaxPool2D(pool_size=(2,2)))
model.add(Dropout(0.2))
#Conv 5
model.add(Conv2D(256,(3,3),padding='same',activation='relu'))
model.add(BatchNormalization())
#Conv 6
model.add(Conv2D(256,(3,3),padding='same',activation='relu'))
model.add(BatchNormalization())
model.add(MaxPool2D(pool_size=(2,2)))
model.add(Dropout(0.2))
model.add(Flatten())
model.add(Dense(256,activation='relu'))
model.add(BatchNormalization())
model.add(Dropout(0.5))

model.add(Dense(50, activation='softmax'))


