# News NLP  
This repo is for an NLP project around document classification, unsupervised clustering, and topic modeling.  

## Data  
The data used for the analyses was downloaded from: (https://www.kaggle.com/snapcrack/all-the-news)  

This project assumes there is a `data` folder in the root of the project tree. The folder is added to the `.gitignore` file to avoid big files being checked into version control. Download the zip file into the `data` folder and unzip with the following command:  

```bash  
unzip downloaded_data.zip  
```  

## Further Setup  
For the [topic modeling notebook](topic_modeling.ipynb), you need to download the `Mallet` model. Assuming you're in the root directory of the project, you can perform the necessary steps as follows:  

```bash  
cd data  
wget http://mallet.cs.umass.edu/dist/mallet-2.0.8.zip  
unzip mallet-2.0.8.zip  
```  

The code utilizing the `Mallet` model should now function properly.  

## Document Classification  
The [first notebook](doc_classification) creates the dataset and applies the following techniques:  
1. Count Vectorization  
2. TF-IDF  
3. Doc2Vec Embeddings  

Each of the resulting vectorized representations of the documents are then used as inputs to a Random Forest classification model to predict the publication source of the article.  

## Document Clustering  
The [second notebook](doc_clustering.ipynb) utilizes unsupervised clustering techniques on the corpus along with visualizations.  
1. t-SNE  
2. K-Means  
3. Hierarchical Clustering  

## Topic Modeling  
The [third notebook](topic_modeling.ipynb) takes a sample of the original dataset and performs topic modeling utilizing the Latent Dirichlet Allocation (LDA) algorithm.
