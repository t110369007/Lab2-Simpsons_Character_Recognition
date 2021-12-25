test.sh

# execute the following code
# Read images in order and make predictions
model = keras.models.load_model('model.h5')
results = []

for i in range(1, len(test_dict) + 1):
    img = load_img(test_dir + "/" + test_dict[str(i)], 221, 221)
    ret = model.predict(img)
    print("{:5d}: {:30s}".format(i, simpsons_dict[np.argmax(ret)]), end="\r")
    results.append(np.argmax(ret))
	
	
# Print results in CSV format and upload to Kaggle
with open('pred_results.csv', 'w') as f:
    f.write('id,character\n')
    for i in range(len(results)):
        f.write(str(i+1) + ',' + str(simpsons_dict[results[i]]) + '\n')



# Download your results!
from IPython.display import FileLink
FileLink('pred_results.csv')		
	

SampleSubmission.csv #upload to Kaggle.