{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "app.name" }}
{{- default .Chart.Name .Values.app.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "app.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create host name.
*/}}
{{- define "app.fqdn" -}}
{{- template "app.name" .}}.{{ .Values.app.environment }}.automox.com
{{- end -}}

{{/*
Create secret name.
*/}}
{{- define "app.secretName" -}}
{{- template "app.name" .}}-{{ .Values.app.environment }}-tls
{{- end -}}
