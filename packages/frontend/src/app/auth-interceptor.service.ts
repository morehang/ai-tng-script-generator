import { Injectable } from '@angular/core';
import {
  HttpInterceptor,
  HttpRequest,
  HttpHandler,
  HttpEvent
} from '@angular/common/http';
import { Observable } from 'rxjs';

/**
 * Interceptor providing JWT 
 * for authentication in any HTTP request.
 */
@Injectable({
  providedIn: 'root'
})
export class AuthInterceptor implements HttpInterc