# NodeJs TypeScript Express App Deploy to EC2 using AWS S3 Artifact from AWS Codedeploy from Command line and from Github Actions. 

# In the project terminal to upload the project zip to aws s3.
zip -r project.zip . -x node_modules\* dist\* .git\* && aws s3 cp project.zip s3://typescript-express-artifact-2/code-deploy-3/project.zip


aws deploy create-deployment \
              --application-name "node-app" \
              --deployment-config-name CodeDeployDefault.OneAtATime \
              --deployment-group-name ec2-app \
              --description "My demo deployment" \
              --s3-location bucket=typescript-express-artifact-2,bundleType=zip,key=code-deploy-3/project.zip