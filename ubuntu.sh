# Enter the package name to build Python Lambda Layer
# NOTE: Made for Python 3.9, if using different version, change in venv step

# e.g. - building for boto3 library

PACKAGE_NAME=boto3


python3.9 -m venv venv
source venv/bin/activate

mkdir $PACKAGE_NAME
cd $PACKAGE_NAME

mkdir python
cd python

pip install $PACKAGE_NAME -t ./
rm -rf *dist-info
cd ..
zip -r $PACKAGE_NAME.zip python
deactivate
cd ..
