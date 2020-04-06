import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Book } from '../common/book';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class BookService {

  baseUrl = 'http://localhost:8090/api/v1/books';

  // tslint:disable-next-line: variable-name
  constructor(private _httpClient: HttpClient) { }

    getBooks(): Observable<Book[]> {
      return this._httpClient.get<GetResponseBooks>(this.baseUrl).pipe(
        map(response =>response._embedded.books)
      );
    }
}

interface GetResponseBooks{
  _embedded:{
    books: Book[];
  }
}
