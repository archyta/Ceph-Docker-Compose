#!/bin/bash
docker-compose down
docker volume rm $(docker volume ls|grep ceph|awk '{print $2}')
sudo rm -rf ceph_data/*
sudo rm -rf ceph_conf/*
sudo rm -rf osds/osd1/*
sudo rm -rf osds/osd2/*
sudo rm -rf osds/osd3/*
