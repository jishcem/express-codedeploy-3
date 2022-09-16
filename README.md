[My LinkedIn Profile](https://www.linkedin.com/in/ajeesh-j-1170041b/)

[Previous Video on Github Actions CI - Upload Artifacts to AWS S3](https://www.youtube.com/watch?v=pYNAmdV07Ow)

[Previous Video on How AWS CodeDeploy Works - Upload Artifacts to AWS S3](https://www.youtube.com/watch?v=wc3NY5QL4IY)


# NodeJs TypeScript Express App Deploy to EC2 using AWS S3 Artifact from AWS Codedeploy from Github Actions CI & CD pipeline 

# In the project terminal to upload the project zip to aws s3.
zip -r project.zip . -x node_modules\* dist\* .git\* && aws s3 cp project.zip s3://typescript-express-artifact-2/code-deploy-3/project.zip


aws deploy create-deployment \
              --application-name "node-app" \
              --deployment-config-name CodeDeployDefault.OneAtATime \
              --deployment-group-name ec2-app \
              --description "My demo deployment" \
              --s3-location bucket=typescript-express-artifact-2,bundleType=zip,key=code-deploy-3/project.zip