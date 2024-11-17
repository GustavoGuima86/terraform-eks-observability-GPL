grafana:
  adminPassword: ${adminPassword}
  additionalDataSources:
    - name: Loki
      type: loki
      isDefault: false
      access: proxy
      url: http://loki:3100
      jsonData:
        timeout: 60
        maxLines: 1000
      version: 1