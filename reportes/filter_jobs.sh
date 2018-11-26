#!/bin/bash

zcat jobs.log.gz | awk '{print $1,$5}' > jobs_per_user.log
