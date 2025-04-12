# kafka-strimzi-cluster

![Version: 6.0.0](https://img.shields.io/badge/Version-6.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 6.0.0](https://img.shields.io/badge/AppVersion-6.0.0-informational?style=flat-square)

A Chart for deployment and testing of a opinionated kafka cluster using strimzi

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| ryanfaircloth |  |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cruiseControl.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].key | string | `"kubernetes.io/arch"` |  |
| cruiseControl.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].operator | string | `"In"` |  |
| cruiseControl.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].values[0] | string | `"arm64"` |  |
| cruiseControl.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].weight | int | `100` |  |
| cruiseControl.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"kubernetes.io/os"` |  |
| cruiseControl.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| cruiseControl.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"linux"` |  |
| cruiseControl.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[1].key | string | `"karpenter.k8s.aws/instance-local-nvme"` |  |
| cruiseControl.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[1].operator | string | `"DoesNotExist"` |  |
| cruiseControl.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].key | string | `"strimzi.io/pool-name"` |  |
| cruiseControl.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].operator | string | `"In"` |  |
| cruiseControl.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].values[0] | string | `"kafka"` |  |
| cruiseControl.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.topologyKey | string | `"topology.kubernetes.io/zone"` |  |
| cruiseControl.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].weight | int | `100` |  |
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
| kafka.authorization.enabled | bool | `true` |  |
| kafka.authorization.type | string | `"simple"` |  |
| kafka.config."default.replication.factor" | int | `3` |  |
| kafka.config."min.insync.replicas" | int | `2` |  |
| kafka.config."offsets.topic.replication.factor" | int | `3` |  |
| kafka.config."socket.receive.buffer.bytes" | int | `-1` |  |
| kafka.config."socket.send.buffer.bytes" | int | `-1` |  |
| kafka.config."transaction.state.log.min.isr" | int | `2` |  |
| kafka.config."transaction.state.log.replication.factor" | int | `3` |  |
| kafka.jmxOptions | object | `{}` |  |
| kafka.listeners.internal.plain.enabled | bool | `false` |  |
| kafka.listeners.internal.tls.authentication.enabled | bool | `true` |  |
| kafka.listeners.internal.tls.authentication.type | string | `"scram-sha-512"` |  |
| kafka.listeners.internal.tls.certManager.enabled | bool | `false` |  |
| kafka.listeners.internal.tls.certManager.issuerRef.kind | string | `"ClusterIssuer"` |  |
| kafka.listeners.internal.tls.certManager.issuerRef.name | string | `nil` |  |
| kafka.listeners.internal.tls.enabled | bool | `true` |  |
| kafka.metricsConfig.config | string | `"# Intentionally Left Blank to enable default config\n"` |  |
| kafka.metricsConfig.enabled | bool | `true` |  |
| kafka.rack.enabled | bool | `true` |  |
| kafka.rack.topologyKey | string | `"topology.kubernetes.io/zone"` |  |
| nodePools.controller.enabled | bool | `false` |  |
| nodePools.controller.jvmOptions.-XX.ExplicitGCInvokesConcurrent | string | `"true"` |  |
| nodePools.controller.jvmOptions.-XX.InitiatingHeapOccupancyPercent | string | `"35"` |  |
| nodePools.controller.jvmOptions.-XX.MaxGCPauseMillis | string | `"20"` |  |
| nodePools.controller.jvmOptions.-XX.UseG1GC | string | `"true"` |  |
| nodePools.controller.jvmOptions.-Xms | string | `"5g"` |  |
| nodePools.controller.jvmOptions.-Xmx | string | `"5g"` |  |
| nodePools.controller.resources | object | `{}` |  |
| nodePools.controller.storage | string | `nil` |  |
| nodePools.controller.template.pod.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].key | string | `"kubernetes.io/arch"` |  |
| nodePools.controller.template.pod.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].operator | string | `"In"` |  |
| nodePools.controller.template.pod.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].values[0] | string | `"arm64"` |  |
| nodePools.controller.template.pod.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].weight | int | `100` |  |
| nodePools.controller.template.pod.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"kubernetes.io/os"` |  |
| nodePools.controller.template.pod.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| nodePools.controller.template.pod.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"linux"` |  |
| nodePools.controller.template.pod.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].key | string | `"strimzi.io/pool-name"` |  |
| nodePools.controller.template.pod.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].operator | string | `"In"` |  |
| nodePools.controller.template.pod.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].values[0] | string | `"kafka"` |  |
| nodePools.controller.template.pod.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].values[1] | string | `"controller"` |  |
| nodePools.controller.template.pod.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].topologyKey | string | `"kubernetes.io/hostname"` |  |
| nodePools.controller.template.pod.topologySpreadConstraints[0].labelSelector.matchLabels."strimzi.io/pool-name" | string | `"kafka"` |  |
| nodePools.controller.template.pod.topologySpreadConstraints[0].matchLabelKeys[0] | string | `"pod-template-hash"` |  |
| nodePools.controller.template.pod.topologySpreadConstraints[0].maxSkew | int | `1` |  |
| nodePools.controller.template.pod.topologySpreadConstraints[0].topologyKey | string | `"topology.kubernetes.io/zone"` |  |
| nodePools.controller.template.pod.topologySpreadConstraints[0].whenUnsatisfiable | string | `"ScheduleAnyway"` |  |
| nodePools.enabled | bool | `false` |  |
| nodePools.kafka.jvmOptions.-XX.ExplicitGCInvokesConcurrent | string | `"true"` |  |
| nodePools.kafka.jvmOptions.-XX.InitiatingHeapOccupancyPercent | string | `"35"` |  |
| nodePools.kafka.jvmOptions.-XX.MaxGCPauseMillis | string | `"20"` |  |
| nodePools.kafka.jvmOptions.-XX.UseG1GC | string | `"true"` |  |
| nodePools.kafka.jvmOptions.-Xms | string | `"5g"` |  |
| nodePools.kafka.jvmOptions.-Xmx | string | `"5g"` |  |
| nodePools.kafka.template.pod.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"kubernetes.io/os"` |  |
| nodePools.kafka.template.pod.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| nodePools.kafka.template.pod.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"linux"` |  |
| nodePools.kafka.template.pod.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].key | string | `"kubernetes.io/arch"` |  |
| nodePools.kafka.template.pod.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].operator | string | `"In"` |  |
| nodePools.kafka.template.pod.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].values[0] | string | `"arm64"` |  |
| nodePools.kafka.template.pod.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.preferredDuringSchedulingIgnoredDuringExecution[0].weight | int | `100` |  |
| nodePools.kafka.template.pod.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].key | string | `"strimzi.io/pool-name"` |  |
| nodePools.kafka.template.pod.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].operator | string | `"In"` |  |
| nodePools.kafka.template.pod.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].values[0] | string | `"controller"` |  |
| nodePools.kafka.template.pod.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.topologyKey | string | `"topology.kubernetes.io/zone"` |  |
| nodePools.kafka.template.pod.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].weight | int | `100` |  |
| nodePools.kafka.template.pod.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].key | string | `"strimzi.io/pool-name"` |  |
| nodePools.kafka.template.pod.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].operator | string | `"In"` |  |
| nodePools.kafka.template.pod.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].values[0] | string | `"controller"` |  |
| nodePools.kafka.template.pod.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].labelSelector.matchExpressions[0].values[1] | string | `"broker"` |  |
| nodePools.kafka.template.pod.affinity.podAntiAffinity.requiredDuringSchedulingIgnoredDuringExecution[0].topologyKey | string | `"kubernetes.io/hostname"` |  |
| nodePools.kafka.template.pod.topologySpreadConstraints[0].labelSelector.matchLabels."strimzi.io/pool-name" | string | `"controller"` |  |
| nodePools.kafka.template.pod.topologySpreadConstraints[0].matchLabelKeys[0] | string | `"pod-template-hash"` |  |
| nodePools.kafka.template.pod.topologySpreadConstraints[0].maxSkew | int | `1` |  |
| nodePools.kafka.template.pod.topologySpreadConstraints[0].topologyKey | string | `"topology.kubernetes.io/zone"` |  |
| nodePools.kafka.template.pod.topologySpreadConstraints[0].whenUnsatisfiable | string | `"ScheduleAnyway"` |  |
| topicOperator.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].key | string | `"kubernetes.io/arch"` |  |
| topicOperator.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].operator | string | `"In"` |  |
| topicOperator.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].values[0] | string | `"arm64"` |  |
| topicOperator.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].weight | int | `100` |  |
| topicOperator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"kubernetes.io/os"` |  |
| topicOperator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| topicOperator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"linux"` |  |
| topicOperator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[1].key | string | `"karpenter.k8s.aws/instance-local-nvme"` |  |
| topicOperator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[1].operator | string | `"DoesNotExist"` |  |
| topicOperator.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].key | string | `"strimzi.io/pool-name"` |  |
| topicOperator.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].operator | string | `"In"` |  |
| topicOperator.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].values[0] | string | `"kafka"` |  |
| topicOperator.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.topologyKey | string | `"topology.kubernetes.io/zone"` |  |
| topicOperator.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].weight | int | `100` |  |
| topicOperator.autoscaling.enabled | bool | `false` |  |
| topicOperator.autoscaling.maxReplicas | int | `100` |  |
| topicOperator.autoscaling.minReplicas | int | `1` |  |
| topicOperator.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| topicOperator.nodeSelector | object | `{}` |  |
| topicOperator.resources | object | `{}` |  |
| topicOperator.tolerations | list | `[]` |  |
| userOperator.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].key | string | `"kubernetes.io/arch"` |  |
| userOperator.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].operator | string | `"In"` |  |
| userOperator.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].preference.matchExpressions[0].values[0] | string | `"arm64"` |  |
| userOperator.affinity.nodeAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].weight | int | `100` |  |
| userOperator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"kubernetes.io/os"` |  |
| userOperator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| userOperator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"linux"` |  |
| userOperator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[1].key | string | `"karpenter.k8s.aws/instance-local-nvme"` |  |
| userOperator.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[1].operator | string | `"DoesNotExist"` |  |
| userOperator.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].key | string | `"strimzi.io/cluster"` |  |
| userOperator.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].operator | string | `"In"` |  |
| userOperator.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].values[0] | string | `"${kafka_name}"` |  |
| userOperator.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[1].key | string | `"strimzi.io/pool-name"` |  |
| userOperator.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[1].operator | string | `"In"` |  |
| userOperator.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[1].values[0] | string | `"kafka"` |  |
| userOperator.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.topologyKey | string | `"topology.kubernetes.io/zone"` |  |
| userOperator.affinity.podAffinity.PreferredDuringSchedulingIgnoredDuringExecution[0].weight | int | `100` |  |
| userOperator.autoscaling.enabled | bool | `false` |  |
| userOperator.autoscaling.maxReplicas | int | `100` |  |
| userOperator.autoscaling.minReplicas | int | `1` |  |
| userOperator.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| userOperator.nodeSelector | object | `{}` |  |
| userOperator.resources | object | `{}` |  |
| userOperator.tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
