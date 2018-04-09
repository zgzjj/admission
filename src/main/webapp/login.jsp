<!DOCTYPE html>
<%@page contentType="text/html; charset=UTF-8" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>登录</title>
	<link href="https://cdn.bootcss.com/element-ui/2.3.2/theme-chalk/index.css" rel="stylesheet">

</head>
<style>
	a{ text-decoration:none; }
</style>
<body>
<div id="app">
	<el-container>
		<el-header height="250px"></el-header>
		<el-main>
			<el-form ref="form" :model="form" label-width="80px">
				<el-row :gutter="20">
					<el-col :span="6" :offset="11">
						<span style="font-family:Arial ;font-size: 30px">Login In</span>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="7" :offset="8">
				<el-form-item label="用户名">
					<el-input v-model="form.username"></el-input>
				</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="7" :offset="8">
				<el-form-item label="密码">
					<el-input v-model="form.password"></el-input>
				</el-form-item>
					</el-col>
				</el-row>
				<el-row>
					<el-col :span="8" :offset="12">
				<el-button type="primary" >登录</el-button>
				<el-button @click="dialogFormVisible = true">报名</el-button>
					</el-col>
				</el-row>
			</el-form>
		</el-main>
	</el-container>
	<el-dialog title="报名信息" :visible.sync="dialogFormVisible">
		<el-form :model="reg" :rules="rules" ref="reg" label-width="80px" size="mini">
			<el-row >
				<el-col :span="12" :offset="4">
			<el-form-item label="学生姓名" prop="name">
				<el-input v-model="reg.name" auto-complete="off"></el-input>
			</el-form-item>
				</el-col>
			</el-row>
			<el-row >
				<el-col :span="12" :offset="4">
			<el-form-item label="性别" prop="sex">
				<el-radio v-model="reg.sex" label="1">男</el-radio>
				<el-radio v-model="reg.sex" label="2">女</el-radio>
			</el-form-item>
				</el-col>
			</el-row>
			<el-row >
				<el-col :span="12" :offset="4">
			<el-form-item label="年龄" prop="age">
				<el-input type="age" v-model="reg.age" auto-complete="off"></el-input>
			</el-form-item>
				</el-col>
			</el-row>
			<el-row >
				<el-col :span="12" :offset="4">
			<el-form-item label="民族" prop="nation">
				<el-input v-model="reg.nation" auto-complete="off"></el-input>
			</el-form-item>
				</el-col>
			</el-row>
			<el-row >
				<el-col :span="12" :offset="4">
			<el-form-item label="毕业学校" prop="school">
				<el-input v-model="reg.school" auto-complete="off"></el-input>
			</el-form-item>
				</el-col>
			</el-row>
			<el-row >
				<el-col :span="12" :offset="4">
			<el-form-item label="是否团员" prop="member">
				<el-radio v-model="reg.member" label="1">是</el-radio>
				<el-radio v-model="reg.member" label="2">否</el-radio>
			</el-form-item>
				</el-col>
			</el-row>
			<el-row >
				<el-col :span="12" :offset="4">
			<el-form-item label="家庭住址" prop="address">
				<el-input v-model="reg.address" auto-complete="off"></el-input>
			</el-form-item>
				</el-col>
			</el-row>
			<el-row >
				<el-col :span="12" :offset="4">
					<el-form-item label="联系电话" prop="phone">
						<el-input v-model="reg.phone" auto-complete="off"></el-input>
					</el-form-item>
				</el-col>
			</el-row>
		</el-form>
		<div slot="footer" class="dialog-footer">
			<el-button @click="dialogFormVisible = false">取 消</el-button>
			<el-button type="primary" @click="submitForm('reg')">报名</el-button>
		</div>
	</el-dialog>
</div>
</body>
<script src="/resources/script/axios.js"></script>
<script src="/resources/script/vue.js"></script>
<script src="/resources/script/index.js"></script>
<content tag="javascript">
	<script>
         var vue = new Vue( {
            el:'#app',
            data () {
                return {
                    form:{
                      username:'',
					  password:'',
					},
					reg:{
                        name:'',
						age:'',
						sex:'',
						nation:'',
						member:'',
						school:'',
						address:'',
						phone:'',
					},
                    dialogFormVisible: false,
                    rules: {
                        name: [
                            { required: true, message: '请输入学生姓名', trigger: 'blur' },
                            { min: 3, max: 5, message: '长度在 3 到 5 个字符', trigger: 'blur' }
                        ],
                        sex: [
                            { required: true, message: '请选择性别', trigger: 'blur' }
                        ],
                        age: [
                            { required: true, message: '请输入年龄', trigger: 'blur' },
                            { type: 'number', message: '年龄必须为数字值'}
                        ],
                        nation:[
                            { required: true, message: '请输入民族', trigger: 'blur' },
                        ],
                        school:[
                            { required: true, message: '请输入毕业学校', trigger: 'blur' },
                        ],
                        member: [
                            { required: true, message: '请选择是否团员', trigger: 'blur' }
                        ],
                        address:[
                            { required: true, message: '请输入家庭住址', trigger: 'blur' },
                        ],
                        phone:[
                            { required: true, message: '请输入联系电话', trigger: 'blur' },
                        ]
                    }
                };
            },
            methods:{
                submitForm(formName) {
                    this.$refs[formName].validate((valid) => {
                        if (valid) {
                            alert('submit!');
                        } else {
                            console.log('error submit!!');
                            return false;
                        }
                    });
                },
			}
        });
	</script>
</content>
</html>
