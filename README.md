# kafka-strimzi-cluster

![Version: 2.0.0-next.1](https://img.shields.io/badge/Version-2.0.0--next.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.16.0](https://img.shields.io/badge/AppVersion-1.16.0-informational?style=flat-square)

A Chart for deployment and testing of a opinionated kafka cluster using

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| ryanfaircloth |  |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cruiseControl.affinity | object | `{}` |  |
| cruiseControl.autoscaling.enabled | bool | `false` |  |
| cruiseControl.autoscaling.maxReplicas | int | `100` |  |
| cruiseControl.autoscaling.minReplicas | int | `1` |  |
| cruiseControl.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| cruiseControl.nodeSelector | object | `{}` |  |
| cruiseControl.resources | object | `{}` |  |
| cruiseControl.tolerations | list | `[]` |  |
| kafka.affinity | object | `{}` |  |
| kafka.autoscaling.enabled | bool | `false` |  |
| kafka.autoscaling.maxReplicas | int | `100` |  |
| kafka.autoscaling.minReplicas | int | `1` |  |
| kafka.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| kafka.nodeSelector | object | `{}` |  |
| kafka.replicas | int | `3` |  |
| kafka.resources | object | `{}` |  |
| kafka.storage | string | `nil` |  |
| kafka.tolerations | list | `[]` |  |
| topicOperator.affinity | object | `{}` |  |
| topicOperator.autoscaling.enabled | bool | `false` |  |
| topicOperator.autoscaling.maxReplicas | int | `100` |  |
| topicOperator.autoscaling.minReplicas | int | `1` |  |
| topicOperator.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| topicOperator.nodeSelector | object | `{}` |  |
| topicOperator.resources | object | `{}` |  |
| topicOperator.tolerations | list | `[]` |  |
| userOperator.affinity | object | `{}` |  |
| userOperator.autoscaling.enabled | bool | `false` |  |
| userOperator.autoscaling.maxReplicas | int | `100` |  |
| userOperator.autoscaling.minReplicas | int | `1` |  |
| userOperator.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| userOperator.nodeSelector | object | `{}` |  |
| userOperator.resources | object | `{}` |  |
| userOperator.tolerations | list | `[]` |  |
| zookeeper.affinity | object | `{}` |  |
| zookeeper.autoscaling.enabled | bool | `false` |  |
| zookeeper.autoscaling.maxReplicas | int | `100` |  |
| zookeeper.autoscaling.minReplicas | int | `1` |  |
| zookeeper.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| zookeeper.nodeSelector | object | `{}` |  |
| zookeeper.replicas | int | `3` |  |
| zookeeper.resources | object | `{}` |  |
| zookeeper.storage | string | `nil` |  |
| zookeeper.tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.3](https://github.com/norwoodj/helm-docs/releases/v1.11.3)
