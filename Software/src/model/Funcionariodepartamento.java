package model;
// Generated 08/11/2016 17:45:52 by Hibernate Tools 4.3.1



/**
 * Funcionariodepartamento generated by hbm2java
 */
public class Funcionariodepartamento  implements java.io.Serializable {


     private Integer idFuncionarioDepartamento;
     private Departamento departamento;
     private Funcionario funcionario;

    public Funcionariodepartamento() {
    }

    public Funcionariodepartamento(Departamento departamento, Funcionario funcionario) {
       this.departamento = departamento;
       this.funcionario = funcionario;
    }
   
    public Integer getIdFuncionarioDepartamento() {
        return this.idFuncionarioDepartamento;
    }
    
    public void setIdFuncionarioDepartamento(Integer idFuncionarioDepartamento) {
        this.idFuncionarioDepartamento = idFuncionarioDepartamento;
    }
    public Departamento getDepartamento() {
        return this.departamento;
    }
    
    public void setDepartamento(Departamento departamento) {
        this.departamento = departamento;
    }
    public Funcionario getFuncionario() {
        return this.funcionario;
    }
    
    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
    }




}


