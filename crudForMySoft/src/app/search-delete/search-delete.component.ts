import { Component, OnInit } from '@angular/core';
import { UserRegistationService } from '../user-registation.service';

@Component({
  selector: 'app-search-delete',
  templateUrl: './search-delete.component.html',
  styleUrls: ['./search-delete.component.css']
})
export class SearchDeleteComponent implements OnInit {

  users:any;

  name:string;



  constructor(private service:UserRegistationService) { }


  public delteUser(id:number){

   let resp= this.service.delteUser(id);

   resp.subscribe((data)=>this.users=data);

  }

  public searchByEmail(name){

    console.log(name);

    let resp= this.service.getById(name);
 
    resp.subscribe((data)=>this.users=data);
 
   }

  ngOnInit() {

    let resp=this.service.getUsers();
    resp.subscribe((data)=>this.users=data);
  }

}
