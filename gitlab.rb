
# This config provides gitlab access to AWS resources (RDS, S3, ElastiCache)
# Fill- HOST, PORT, PASSWORD, USERNAME (for each bucket) as needed

postgresql['enable'] = false
gitlab_rails['db_adapter'] = 'postgresql'
gitlab_rails['db_database'] = 'postgre'
gitlab_rails['db_encoding'] = 'unicode'
gitlab_rails['db_host'] = 'gl-lab01-db-instance.c98wptimekfu.eu-west-1.rds.amazonaws.com'
gitlab_rails['db_port'] = 5432
gitlab_rails['db_password'] = 'ukuvfrbk3w3wWQBQfuNHRLaP3AkW'
postgresql['auto_restart_on_version_change'] = false

redis['enable'] = false
gitlab_rails['redis_host'] = 'master.gle6ihehaee8fov.0lpyn0.euw1.cache.amazonaws.com'
gitlab_rails['redis_port'] = '6379'
gitlab_rails['redis_password'] = 'X35Q69xxNhOse9BK'
gitlab_rails['redis_ssl'] = false

gitlab_rails['object_store']['enabled'] = true
gitlab_rails['object_store']['connection'] = {
'provider' => 'AWS',
'region' => 'eu-west-1',
'use_iam_profile' => true,
'aws_signature_version' => 4
}

gitlab_rails['object_store']['objects']['artifacts']['bucket'] = "gl-artifacts-dor"
gitlab_rails['object_store']['objects']['external_diffs']['bucket'] = "gl-external-diffs-dor"
gitlab_rails['object_store']['objects']['uploads']['bucket'] = "gl-uploads-dor"
gitlab_rails['object_store']['objects']['lfs']['bucket'] = "gl-lfs-dor"
gitlab_rails['object_store']['objects']['packages']['bucket'] = "gl-packages-dor"
gitlab_rails['object_store']['objects']['dependency_proxy']['bucket'] = "gl-dependency-proxy-dor"
gitlab_rails['object_store']['objects']['terraform_state']['bucket'] = "gl-terraform-dor"
gitlab_rails['object_store']['objects']['ci_secure_files']['bucket'] = "gl-ci-secure-files-dor"
gitlab_rails['backup_upload_connection'] = {
'provider' => 'AWS',
'region' => 'eu-west-1',
'use_iam_profile' => true,
'aws_signature_version' => 4
}
gitlab_rails['backup_upload_remote_directory'] = 'gl-backups-dor';

external_url "http://3.249.192.170"