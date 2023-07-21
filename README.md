# microsoft-smtp-xoauth2-test-tool
This is a test tool for SMTP XOAUTH2 email workflow. This is using the device code flow of OAuth2 for limited input devices and the authorization code grant. This will test if Microsoft side did some breakage so that they can fix issues immediately.


How to use this tool

docker build . -t microsoft-smtp-xoauth2-test-tool
docker run --tm -it -p 8080:8080 microsoft-smtp-xoauth2-test-tool cargo run \<access token grant type\> \<app id\> \<client id\> \<client secret\> \<recipient email\> \<recipient name\> \<debug log level\>


Notes:

The \<access token grant type\> can be of the following:
- AuthorizationCodeGrant
- DeviceCodeFlow

The \<app id\> can be of the following:
- common
- The ID of your application

The \<client secret\> can be of the following:
- None (If there is no client secret)
- Client Secret string (If there is a client secret)

The \<debug log level\> can be of the following:
- error
- warn
- info
- debug
- trace

Just look in the logs for the login link.