#!/usr/bin/env bash
#
yq -i ".version = \"${1}\" | .appVersion style=\"double\" | .appVersion = \"${1}\"" charts/strimzi-kafka-cluster/Chart.yaml
helm package chart
