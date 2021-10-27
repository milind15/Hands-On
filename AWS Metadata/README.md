# AWS-METADATA
- Query the metadata of an EC2 instance within AWS and provide a json formatted output. 
- Retrieve the value of a particular data key.

## Installation
- Install pipenv
  - `sudo pip3 install pipenv`
- Install project dependancies
  - `pipenv install`

## Execution
- Open the `src` folder
  - `cd aws-metadata-json/src`
- Run whichever script you need:
  - `python3 get_metadata.py`
  - `python3 get_key.py`

#### It makes use of the http://169.254.169.254/latest/meta-data link-local address. Instance metatada is provided at this link, but only when you visit it from a running instance.
