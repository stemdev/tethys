#!/bin/bash

# Make vagrant automatically go to /vagrant when we ssh in.
echo "cd /vagrant" | sudo tee -a ~vagrant/.profile
