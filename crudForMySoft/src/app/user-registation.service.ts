import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class UserRegistationService {

  constructor(private http:HttpClient) { }

  public doRegistration(user){


    return this.http.post("http://localhost:8081/register",user,{responseType:'text' as 'json'});

  }

  public getUsers(){

    return this.http.get("http://localhost:8081/getAllUsers");
  }

  

  public getById(name){

    return this.http.get("http://localhost:8081/findUserbyId/"+name);

  }

  public delteUser(id){

    return this.http.delete("http://localhost:8081/cancel/"+id);

  }


}
