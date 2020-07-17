import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';

import {environment} from '../environments/environment';
import {catchError, map} from "rxjs/operators";
import {of} from "rxjs";

@Injectable({
  providedIn: 'root'
})

export class HeroesService {
  private endpoint: string = `${environment.server}/api/heroes`;

  constructor(
    private httpService: HttpClient,
  ) { }


  getAll() {
    return this.httpService.get(this.endpoint)
      .pipe(
        map(data => data),
        catchError(err => of({ isError: true, error: err })),
      );
  }
}
