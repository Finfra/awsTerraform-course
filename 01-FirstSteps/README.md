# Info
* Terraform 명령을 익히기 위한 예제임. 생성된 인스턴스에 접속이 되는 것은 아님.
## 실행 절차
1. 아래 스크립트를 복사하여 메모장에서 xxx부분에  access_key와 secret_key를 각각 입력하여 vagrant계정에서 실행
```
echo '
export TF_VAR_AWS_ACCESS_KEY="xxxxxxx"
export TF_VAR_AWS_SECRET_KEY="xxxxxxxxxxxxxxx"
export TF_VAR_AWS_REGION="eu-west-1"
'>> ~/.bashrc
. ~/.bashrc
```

2. 환경 변수 설정 확인
```
cd awsTerraform-course/01-FirstSteps
terraform init 
```
3. init
```
terraform init
cp -r .terraform ..  # 필수 아님
cd awsTerraform-course/01-FirstSteps
```

4. apply : 중간에 Yes입력
```
terraform apply
```
5. Instance 생성 확인 : awscli나 aws콘솔 사용 확인 

6. destroy
```
terraform destroy
```

# old 방식
## 주의
* 아래와 같이 홈 폴더에 instance.tf파일을 복사 후 사용하세요. 과거 실습시 수강자가 자신의 레포지터리에 fork후 실습하다가 push하여 키가 공개되는 사고가 여러번 있었음.
```
cd awsTerraform-course/01-FirstSteps
cp instance.tf.old ~/instance.tf
```

## 실행 절차
1. 해당 폴더로 이동
```
cd ~/
```

2. 소스 코드에 Access키와 Secret키 입력 (IAM 서비스에서 AWS_ACCESS_KEY와 AWS_SECRET_KEY를 구할 것)
```
vi instance.tf
```

3. init
```
terraform init
cp -r .terraform ..  # 필수 아님
```

4. apply : 중간에 Yes입력
```
terraform apply
```

5. Instance 생성 확인

6. destroy
```
terraform destroy
```
