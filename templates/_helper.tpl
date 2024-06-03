{{- define "labels" }}
{{- range $pkey,$pval := .Values.metadata.labels }}
    {{ $pkey }}: {{ $pval | quote }}
    Release: {{ $.Release.Name }}-{{ $pval | quote }}
{{- end }}
{{- end -}}