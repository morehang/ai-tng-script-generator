import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from '../environments/environment';

/**
 * REST client for Script Generator Services.
 */
@Injectable({
  providedIn: 'root'
})
export class ScriptGeneratorService {
  constructor(private http: HttpClient) {}

  /**
   * Base url of service to 