# This config provides gitlab access to AWS resources (RDS, S3, ElastiCache)
# Fill- host, password, user

postgresql['enable'] = false
gitlab_rails['db_adapter'] = 'postgresql'
gitlab_rails['db_database'] = 'postgres'
gitlab_rails['db_encoding'] = 'unicode'
gitlab_rails['db_host'] = '<host>'
gitlab_rails['db_port'] = 5432
gitlab_rails['db_password'] = '<password>'
postgresql['auto_restart_on_version_change'] = false

redis['enable'] = false
gitlab_rails['redis_host'] = '<host>'
gitlab_rails['redis_port'] = '6379'
gitlab_rails['redis_password'] = '<token>'
gitlab_rails['redis_ssl'] = false

gitlab_rails['object_store']['enabled'] = true
gitlab_rails['object_store']['connection'] = {
'provider' => 'AWS',
'region' => 'eu-west-1',
'use_iam_profile' => true,
'aws_signature_version' => 4
}

gitlab_rails['object_store']['objects']['artifacts']['bucket'] = "gl-artifacts-<user>"
gitlab_rails['object_store']['objects']['external_diffs']['bucket'] = "gl-external-diffs-<user>"
gitlab_rails['object_store']['objects']['uploads']['bucket'] = "gl-uploads-<user>"
gitlab_rails['object_store']['objects']['lfs']['bucket'] = "gl-lfs-<user>"
gitlab_rails['object_store']['objects']['packages']['bucket'] = "gl-packages-<user>"
gitlab_rails['object_store']['objects']['dependency_proxy']['bucket'] = "gl-dependency-proxy-<user>"
gitlab_rails['object_store']['objects']['terraform_state']['bucket'] = "gl-terraform-<user>"
gitlab_rails['object_store']['objects']['ci_secure_files']['bucket'] = "gl-ci-secure-files-<user>"
gitlab_rails['backup_upload_connection'] = {
'provider' => 'AWS',
'region' => 'eu-west-1',
'use_iam_profile' => true,
'aws_signature_version' => 4
}
gitlab_rails['backup_upload_remote_directory'] = 'gl-backups-dor';

external_url "http://<ec2-ip>"

