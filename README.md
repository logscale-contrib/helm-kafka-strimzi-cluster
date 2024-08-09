# kafka-strimzi-cluster

![Version: 4.5.1](https://img.shields.io/badge/Version-4.5.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 4.5.1](https://img.shields.io/badge/AppVersion-4.5.1-informational?style=flat-square)

A Chart for deployment and testing of a opinionated kafka cluster using strimzi

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
| cruiseControl.brokerCapacity.inboundNetwork | string | `"15728640KiB/s"` |  |
| cruiseControl.brokerCapacity.outboundNetwork | string | `"15728640KiB/s"` |  |
| cruiseControl.goals[0] | string | `"NetworkInboundCapacityGoal"` |  |
| cruiseControl.goals[1] | string | `"DiskCapacityGoal"` |  |
| cruiseControl.goals[2] | string | `"RackAwareGoal"` |  |
| cruiseControl.goals[3] | string | `"NetworkOutboundCapacityGoal"` |  |
| cruiseControl.goals[4] | string | `"CpuCapacityGoal"` |  |
| cruiseControl.goals[5] | string | `"ReplicaCapacityGoal"` |  |
| cruiseControl.nodeSelector | object | `{}` |  |
| cruiseControl.resources | object | `{}` |  |
| cruiseControl.skipHardGoalCheck | bool | `false` |  |
| cruiseControl.tolerations | list | `[]` |  |
| kafka.affinity | object | `{}` |  |
| kafka.authorization.enabled | bool | `true` |  |
| kafka.authorization.type | string | `"simple"` |  |
| kafka.autoscaling.enabled | bool | `false` |  |
| kafka.autoscaling.maxReplicas | int | `100` |  |
| kafka.autoscaling.minReplicas | int | `1` |  |
| kafka.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| kafka.config."default.replication.factor" | int | `3` |  |
| kafka.config."min.insync.replicas" | int | `2` |  |
| kafka.config."offsets.topic.replication.factor" | int | `3` |  |
| kafka.config."socket.receive.buffer.bytes" | int | `-1` |  |
| kafka.config."socket.send.buffer.bytes" | int | `-1` |  |
| kafka.config."transaction.state.log.min.isr" | int | `2` |  |
| kafka.config."transaction.state.log.replication.factor" | int | `3` |  |
| kafka.listeners.internal.plain.enabled | bool | `false` |  |
| kafka.listeners.internal.tls.authentication.enabled | bool | `true` |  |
| kafka.listeners.internal.tls.authentication.type | string | `"tls"` |  |
| kafka.listeners.internal.tls.certManager.enabled | bool | `false` |  |
| kafka.listeners.internal.tls.certManager.issuerRef.kind | string | `"ClusterIssuer"` |  |
| kafka.listeners.internal.tls.certManager.issuerRef.name | string | `nil` |  |
| kafka.listeners.internal.tls.enabled | bool | `true` |  |
| kafka.nodeSelector | object | `{}` |  |
| kafka.rack.enabled | bool | `true` |  |
| kafka.rack.topologyKey | string | `"topology.kubernetes.io/zone"` |  |
| kafka.replicas | int | `3` |  |
| kafka.resources | object | `{}` |  |
| kafka.securityContext | object | `{}` |  |
| kafka.storage | string | `nil` |  |
| kafka.tolerations | list | `[]` |  |
| metadataMode | string | `"zookeeper"` |  |
| nodePools.controller.enabled | bool | `false` |  |
| nodePools.controller.jvmOptions.-XX.ExplicitGCInvokesConcurrent | string | `"true"` |  |
| nodePools.controller.jvmOptions.-XX.InitiatingHeapOccupancyPercent | string | `"35"` |  |
| nodePools.controller.jvmOptions.-XX.MaxGCPauseMillis | string | `"20"` |  |
| nodePools.controller.jvmOptions.-XX.UseG1GC | string | `"true"` |  |
| nodePools.controller.jvmOptions.-Xms | string | `"5g"` |  |
| nodePools.controller.jvmOptions.-Xmx | string | `"5g"` |  |
| nodePools.controller.resources | object | `{}` |  |
| nodePools.controller.storage | string | `nil` |  |
| nodePools.enabled | bool | `false` |  |
| nodePools.kafka.jvmOptions.-XX.ExplicitGCInvokesConcurrent | string | `"true"` |  |
| nodePools.kafka.jvmOptions.-XX.InitiatingHeapOccupancyPercent | string | `"35"` |  |
| nodePools.kafka.jvmOptions.-XX.MaxGCPauseMillis | string | `"20"` |  |
| nodePools.kafka.jvmOptions.-XX.UseG1GC | string | `"true"` |  |
| nodePools.kafka.jvmOptions.-Xms | string | `"5g"` |  |
| nodePools.kafka.jvmOptions.-Xmx | string | `"5g"` |  |
| nodePools.kafka.template.pod | object | `{}` |  |
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
| zookeeper.securityContext | object | `{}` |  |
| zookeeper.storage | string | `nil` |  |
| zookeeper.tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
