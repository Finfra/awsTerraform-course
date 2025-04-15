# Info
* Terraform 명령을 익히기 위한 예제임. 생성된 인스턴스는 접속 불가
* AWS Console에서 확인 가능 (간혹 접속이 안 될 수도 있음)

## 실행 절차
1. 아래 스크립트를 복사하여 메모장에서 `xxx` 부분에 Access Key와 Secret Key를 각각 입력한 후, `vagrant` 계정에서 실행
```bash
echo '
export TF_VAR_AWS_ACCESS_KEY="xxxxxxx"
export TF_VAR_AWS_SECRET_KEY="xxxxxxxxxxxxxxx"
export TF_VAR_AWS_REGION="eu-west-1"
' >> ~/.bashrc
. ~/.bashrc
```

2. 환경 변수 설정 확인
```bash
cd awsTerraform-course/01-FirstSteps
terraform init 
```

3. 초기화
```bash
terraform init
cp -r .terraform ..  # 필수는 아님
cd awsTerraform-course/01-FirstSteps
```

4. 인스턴스 생성 (중간에 Yes 입력)
```bash
terraform apply
```

5. 인스턴스 생성 확인  
   → AWS CLI 또는 AWS Console에서 확인

6. 인스턴스 제거
```bash
terraform destroy
```

